#!/bin/bash
HYDRA_RUN_PATH=/hydra
mkdir -p $HYDRA_RUN_PATH
[[ ! -d $HYDRA_RUN_PATH/.git ]] && (git clone https://github.com/theotherp/nzbhydra $HYDRA_RUN_PATH && chown -R abc:abc $HYDRA_RUN_PATH)

# test if updates have been disabled
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd $HYDRA_RUN_PATH
git pull
chown -R abc:abc $HYDRA_RUN_PATH
