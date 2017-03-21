package VO;

import java.io.Serializable;

public class walletVO implements Serializable 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int wallet_id;
	private int login_id;
	private double balance;
	private int user_id;
	public int getWallet_id() {
		return wallet_id;
	}
	public void setWallet_id(int wallet_id) {
		this.wallet_id = wallet_id;
	}
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
