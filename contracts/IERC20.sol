pragma solidity ^0.5.4;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP. Does not include
 * the optional functions; to access them see {ERC20Detailed}.
 */
interface IERC20 {
    /**
     * @dev 返回存在的令牌数量。
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev 返回“account”拥有的令牌数量。
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev 将“amount”令牌从调用者的帐户移到“recipient”。
     *
     * 返回一个布尔值，指示操作是否成功。
     *
     * 发出{Transfer}事件。
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev 返回“spender”将使用的剩余令牌数
     * 允许通过{transferFrom}代表“所有者”消费。这是
     * 默认为零。
     *
     * 调用{approve}或{transferFrom}时，此值会更改。
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev 将“amount”设置为“spender”在调用方令牌上的余量。
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev 将“amount”标记从“sender”移动到“recipient”
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);




    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
    冻结或解冻用户账户的事件
     */
    event FrozenFunds(address target, bool frozen);
}