if [ ! "$CRON_ENABLE" = "1" ]; then
	echo "Enable cron"
	rm /etc/supervisor.d/cron.ini > /dev/null 2>&1
fi