./go-ethereum/build/bin/geth --catalyst --datadir "./datadir" init genesis.json
./go-ethereum/build/bin/geth --catalyst --http --ws -http.api "engine,eth" --datadir "./datadir"
