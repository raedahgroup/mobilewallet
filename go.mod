module github.com/planetdecred/dcrlibwallet

require (
	decred.org/dcrwallet v0.0.0-00010101000000-000000000000
	github.com/DataDog/zstd v1.4.1 // indirect
	github.com/asdine/storm v0.0.0-20190216191021-fe89819f6282
	github.com/decred/dcrd/addrmgr v1.2.0
	github.com/decred/dcrd/blockchain/stake/v3 v3.0.0
	github.com/decred/dcrd/chaincfg/chainhash v1.0.2
	github.com/decred/dcrd/chaincfg/v3 v3.0.0
	github.com/decred/dcrd/connmgr/v3 v3.0.0
	github.com/decred/dcrd/dcrec v1.0.0
	github.com/decred/dcrd/dcrutil/v3 v3.0.0
	github.com/decred/dcrd/gcs/v2 v2.1.0
	github.com/decred/dcrd/hdkeychain/v3 v3.0.0
	github.com/decred/dcrd/txscript/v3 v3.0.0
	github.com/decred/dcrd/wire v1.4.0
	github.com/decred/dcrdata/txhelpers/v4 v4.0.1
	github.com/decred/dcrwallet/ticketbuyer/v4 v4.0.2
	github.com/decred/slog v1.1.0
	github.com/dgraph-io/badger v1.6.2
	github.com/jrick/logrotate v1.0.0
	github.com/kevinburke/nacl v0.0.0-20190829012316-f3ed23dbd7f8
	github.com/onsi/ginkgo v1.14.0
	github.com/onsi/gomega v1.10.1
	go.etcd.io/bbolt v1.3.5
	golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a
	golang.org/x/sync v0.0.0-20200625203802-6e8e738ad208
	google.golang.org/appengine v1.5.0 // indirect
)

replace decred.org/dcrwallet => decred.org/dcrwallet v1.6.0-rc4

replace github.com/decred/dcrdata/txhelpers/v4 => github.com/decred/dcrdata/txhelpers/v4 v4.0.0-20200108145420-f82113e7e212

go 1.13
