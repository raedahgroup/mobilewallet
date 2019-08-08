package dcrlibwallet

import (
	"github.com/decred/dcrwallet/wallet"
)

type Amount struct {
	AtomValue int64
	DcrValue  float64
}

// Account represents a single user account
type Account struct {
	Number           int32
	Name             string
	Balance          *Balance
	TotalBalance     int64
	ExternalKeyCount int32
	InternalKeyCount int32
	ImportedKeyCount int32
}

type Balance struct {
	Total                   int64
	Spendable               int64
	ImmatureReward          int64
	ImmatureStakeGeneration int64
	LockedByTickets         int64
	VotingAuthority         int64
	UnConfirmed             int64
}

// Accounts represents a group of `Account`
// belonging to a single wallet
type Accounts struct {
	Count              int
	ErrorMessage       string
	ErrorCode          int
	ErrorOccurred      bool
	Acc                []*Account
	CurrentBlockHash   []byte
	CurrentBlockHeight int32
}

/*
Direction
0: Sent
1: Received
2: Transferred
*/
type Transaction struct {
	Hash      string `storm:"id,unique"`
	Raw       string
	Fee       int64
	Timestamp int64
	Type      string
	Amount    int64
	Status    string
	Height    int32
	Direction int32
	Debits    *[]TransactionDebit
	Credits   *[]TransactionCredit
}

type TransactionDebit struct {
	Index           int32
	PreviousAccount int32
	PreviousAmount  int64
	AccountName     string
}

type TransactionCredit struct {
	Index    int32
	Account  int32
	Internal bool
	Amount   int64
	Address  string
}

type TxFeeAndSize struct {
	Fee                 *Amount
	EstimatedSignedSize int
}

type UnspentOutput struct {
	TransactionHash []byte
	OutputIndex     uint32
	OutputKey       string
	ReceiveTime     int64
	Amount          int64
	FromCoinbase    bool
	Tree            int32
	PkScript        []byte
}

type UnsignedTransaction struct {
	UnsignedTransaction       []byte
	EstimatedSignedSize       int
	ChangeIndex               int
	TotalOutputAmount         int64
	TotalPreviousOutputAmount int64
}

type PurchaseTicketsRequest struct {
	Account               uint32
	RequiredConfirmations uint32
	NumTickets            uint32
	Passphrase            []byte
	Expiry                uint32
	TxFee                 int64
	VSPHost               string
	TicketAddress         string
	PoolAddress           string
	PoolFees              float64
	TicketFee             int64
}

type GetTicketsRequest struct {
	StartingBlockHash   []byte
	StartingBlockHeight int32
	EndingBlockHash     []byte
	EndingBlockHeight   int32
	TargetTicketCount   int32
}

type TicketInfo struct {
	BlockHeight uint32
	Status      string
	Ticket      *wallet.TransactionSummary
	Spender     *wallet.TransactionSummary
}

type TicketPriceResponse struct {
	TicketPrice int64
	Height      int32
}

type VSPTicketPurchaseInfo struct {
	PoolAddress   string  `json:"PoolAddress"`
	PoolFees      float64 `json:"PoolFees"`
	Script        string  `json:"Script"`
	TicketAddress string  `json:"TicketAddress"`
}

type GeneralSyncProgress struct {
	TotalSyncProgress         int32 `json:"totalSyncProgress"`
	TotalTimeRemainingSeconds int64 `json:"totalTimeRemainingSeconds"`
}

type AddressDiscoveryProgressReport struct {
	*GeneralSyncProgress
	AddressDiscoveryProgress int32 `json:"addressDiscoveryProgress"`
}

type HeadersRescanProgressReport struct {
	*GeneralSyncProgress
	TotalHeadersToScan  int32 `json:"totalHeadersToScan"`
	CurrentRescanHeight int32 `json:"currentRescanHeight"`
	RescanProgress      int32 `json:"rescanProgress"`
	RescanTimeRemaining int64 `json:"rescanTimeRemaining"`
}

type HeadersFetchProgressReport struct {
	*GeneralSyncProgress
	TotalHeadersToFetch    int32 `json:"totalHeadersToFetch"`
	CurrentHeaderTimestamp int64 `json:"currentHeaderTimestamp"`
	FetchedHeadersCount    int32 `json:"fetchedHeadersCount"`
	HeadersFetchProgress   int32 `json:"headersFetchProgress"`
}

type DebugInfo struct {
	TotalTimeElapsed          int64
	TotalTimeRemaining        int64
	CurrentStageTimeElapsed   int64
	CurrentStageTimeRemaining int64
}
