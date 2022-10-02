#!/usr/bin/env sh

echo 'Build app'
set -x
npm run build
set +x

echo 'Ejecutar la app'
set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'App ready...'
