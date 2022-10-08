#!/bin/sh
set -eu

BASE_DIR=$( dirname "$0" | xargs realpath )
cd "$BASE_DIR"

docker run --rm -it goldsourceservers/cstrike 'hlds_linux -game cstrike +version +exit' > hlds_cstrike
docker run --rm -it goldsourceservers/czero 'hlds_linux -game czero +version +exit' > hlds_czero
docker run --rm -it goldsourceservers/dmc 'hlds_linux -game dmc +version +exit' > hlds_dmc
docker run --rm -it goldsourceservers/dod 'hlds_linux -game dod +version +exit' > hlds_dod
docker run --rm -it goldsourceservers/gearbox 'hlds_linux -game gearbox +version +exit' > hlds_gearbox
docker run --rm -it goldsourceservers/ricochet 'hlds_linux -game ricochet +version +exit' > hlds_ricochet
docker run --rm -it goldsourceservers/tfc 'hlds_linux -game tfc +version +exit' > hlds_tfc
docker run --rm -it goldsourceservers/valve 'hlds_linux -game valve +version +exit' > hlds_valve
docker run --rm -it sourceservers/csgo 'srcds_linux -game csgo +version +exit' > srcds_csgo
docker run --rm -it sourceservers/cstrike 'srcds_linux -game cstrike +version +exit' > srcds_cstrike
docker run --rm -it sourceservers/dod 'srcds_linux -game dod +version +exit' > srcds_dod
docker run --rm -it sourceservers/hl2mp 'srcds_linux -game hl2mp +version +exit' > srcds_hl2mp
docker run --rm -it sourceservers/left4dead 'srcds_linux -game left4dead +version +exit' > srcds_left4dead
docker run --rm -it sourceservers/left4dead2 'srcds_linux -game left4dead2 +version +exit' > srcds_left4dead2
docker run --rm -it sourceservers/tf 'srcds_linux -game tf +version +exit' > srcds_tf
