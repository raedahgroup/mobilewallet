module github.com/raedahgroup/dcrlibwallet

require (
	github.com/AndreasBriese/bbloom v0.0.0-20190306092124-e2d15f34fcf9 // indirect
	github.com/DataDog/zstd v1.3.5 // indirect
	github.com/asdine/storm v0.0.0-20190216191021-fe89819f6282
	github.com/decred/dcrd/addrmgr v1.0.2
	github.com/decred/dcrd/blockchain/stake v1.1.0
	github.com/decred/dcrd/chaincfg v1.3.0
	github.com/decred/dcrd/chaincfg/chainhash v1.0.1
	github.com/decred/dcrd/connmgr v1.0.2
	github.com/decred/dcrd/dcrec v0.0.0-20190311054417-9a5161ce9e68
	github.com/decred/dcrd/dcrjson v1.1.0
	github.com/decred/dcrd/dcrutil v1.2.0
	github.com/decred/dcrd/hdkeychain v1.1.1
	github.com/decred/dcrd/rpcclient v1.1.0
	github.com/decred/dcrd/rpcclient/v2 v2.0.0
	github.com/decred/dcrd/txscript v1.0.2
	github.com/decred/dcrd/wire v1.2.0
	github.com/decred/dcrlnd v0.1.0
	github.com/decred/dcrwallet v1.2.2
	github.com/decred/dcrwallet/chain v1.1.1
	github.com/decred/dcrwallet/chain/v2 v2.0.0
	github.com/decred/dcrwallet/errors v1.0.1
	github.com/decred/dcrwallet/p2p v1.0.1
	github.com/decred/dcrwallet/spv v1.1.1
	github.com/decred/dcrwallet/spv/v2 v2.0.0
	github.com/decred/dcrwallet/ticketbuyer v1.0.2
	github.com/decred/dcrwallet/ticketbuyer/v2 v2.0.1
	github.com/decred/dcrwallet/wallet v1.3.0
	github.com/decred/dcrwallet/wallet/v2 v2.0.0
	github.com/decred/dcrwallet/walletseed v1.0.1
	github.com/decred/slog v1.0.0
	github.com/dgraph-io/badger v1.5.4
	github.com/dgryski/go-farm v0.0.0-20190104051053-3adb47b1fb0f // indirect
	github.com/jrick/logrotate v1.0.0
	github.com/pkg/errors v0.8.1 // indirect
	go.etcd.io/bbolt v1.3.2
	google.golang.org/appengine v1.5.0 // indirect
)

replace (
	github.com/decred/dcrd => github.com/decred/dcrd v0.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/bech32 => github.com/decred/dcrd/bech32 v0.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/blockchain => github.com/decred/dcrd/blockchain v0.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/connmgr => github.com/decred/dcrd/connmgr v0.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/dcrjson/v2 => github.com/decred/dcrd/dcrjson/v2 v2.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/peer => github.com/decred/dcrd/peer v0.0.0-20190306151227-8cbb5ae69df7
	github.com/decred/dcrd/rpcclient/v2 => github.com/decred/dcrd/rpcclient/v2 v2.0.0-20190306151227-8cbb5ae69df7

	github.com/decred/dcrwallet => github.com/decred/dcrwallet v0.0.0-20190322135901-7e0e5a4227d7
	github.com/decred/dcrwallet/wallet/v2 => github.com/decred/dcrwallet/wallet/v2 v2.0.0-20190322135901-7e0e5a4227d7

	github.com/decred/lightning-onion => github.com/decred/lightning-onion v0.0.0-20190321210301-95556fb4cc37
)
