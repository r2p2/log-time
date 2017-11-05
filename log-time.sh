#!/bin/bash
LOG_FILE=${LOG_TIME_FILE:-"${HOME}/.log_time"}

if [ "${#}" -lt "1" ]; then
	echo "pass at least the command"
	exit 1
fi

CMD=${1}
shift

NOW=$(date +"%s")
${CMD} ${@}
RES=$?
THN=$(date +"%s")
DIF=$(expr ${THN} - ${NOW})

echo "{ ts:${NOW}, wd:\"${PWD}\", cmd:\"${CMD}\", duration:${DIF}, ret:${RES} }" >> "${LOG_FILE}"
