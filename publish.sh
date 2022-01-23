#!/usr/bin/env bash

hugo && rsync -av --progress --delete public/* sanesecurity@sanesecurity.online:/usr/share/nginx/html
