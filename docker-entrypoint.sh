#!/bin/sh

flask db upgrade

exec gunicorn --blind 0.0.0.0:80 "app:create_app()"