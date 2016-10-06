#!/bin/bash

forever --spinSleepTime 1000 start -c coffee node_modules/.bin/hubot --adapter \slack
