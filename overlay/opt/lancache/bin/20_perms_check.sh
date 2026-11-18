#!/bin/sh
if [ -d ""${CACHE_ROOT}"/cache/cache" ]; then
	echo "Running fast permissions check"
	su -m "${WEBUSER}" -c "/bin/sh -c \"find \\\"${CACHE_ROOT}/cache/cache\\\" -maxdepth 1 \( ! -readable -o ! -writable \) | grep -q . && exit 1 || exit 0\""
	if [ $? -ne 0 ] || [ "$FORCE_PERMS_CHECK" = "true" ]; then
		echo "Doing full checking of permissions (This WILL take a long time on large caches)..."
		find "${CACHE_ROOT}" \! -user "${WEBUSER}" -exec chown "${WEBUSER}:${WEBUSER}" '{}' +
		echo "Permissions ok"
	else
		echo "Fast permissions check successful, if you have any permissions error try running with -e FORCE_PERMS_CHECK = true"
	fi

fi
