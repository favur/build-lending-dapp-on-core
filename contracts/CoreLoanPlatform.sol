// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract CoreLoanPlatform {
	//Declaring the standard interace
	IERC20 immutable public USD; //Asset used as collateral
	IERC20 immutable public BTC; //Borrowing asset

    //variable declaraion
    uint256 public constant COLLATERAL_RATIO = 150; //150% collaterization
    uint256 public constant BORROWABLE_RATIO = 80; //80% of collateral borrowable
    uint256 public constant INTEREST_RATE = 5; //5% interst rate
    uint256 public constant LOAN_DURATION = 30; //30 days; 
    uint256 private totalStaked = 0; //Counter for toal staked
    uint256 private totalBorrowed = 0; //Counter for toal borroewed

    //Loan struct definition
    struct Loan {
        uint256 amount;
        uint256 collateral;
        uint256 timestamp;
        uint256 active;
    }

    //mapping for investment loan, collateral and balance
    mapping(address => Loan) public loans;
    mapping(address => uint256) public userCollateral;
    mapping(address => uint256) public lenderBalance;

    //functions declaration
    function depositCollateral(uint256 amount) external{
	// TODO : Implement Logic for deposting Collateral
	}
	
	function withdrawCollateral(uint256 amount) external  {
		// TODO : Implement Logic for withdrawing Collateral
	}
	
	function withdrawBTC(uint256 amount) external  {
	// TODO : Implement Logic for withdrawing BTC
	}
	
	function getBorrowableAmount(address user) external view returns (uint256) {
	// TODO : Implement Logic for fetching borrowable amount
	}
	
	function getUserCollateral(address user) external view returns (uint256) {
	// TODO : Implement Logic for fetching user's collateral amount
	}

	function borrowBTC(uint256 amount) external  {
	// TODO : Implement Logic for borrowing BTC
	}
	
	function depositBTC(uint256 amount) external  {
	// TODO : Implement Logic for deposting BTC
	}
	
	function repayLoan(address user) external  {
	// TODO : Implement Logic for repaying Loan
	}
	
	function calculateInterest(address user) external view returns (uint256) {
	// TODO : Implement Logic for calculating interest
	}

	function getLoanDetails(address borrower) external view returns (Loan memory) {
	// TODO : Implement Logic for fetching loan of specific borrower
	}
	
	function getLenderBalance(address lender) external view returns (uint256) {
	// TODO : Implement Logic for getting the Lender balance
	}
	
	function getTotalStaked() external view returns (uint256) {
	// TODO : Implement Logic for fetching total staked amount
	}
	
	function getTotalBorrowed() external view returns (uint256) {
	// TODO : Implement Logic for fetching total borrowed amount
	}
	
	function getCurrentApy() external pure returns (uint256) {
	// TODO : Implement Logic for fetching current APY
	}
}