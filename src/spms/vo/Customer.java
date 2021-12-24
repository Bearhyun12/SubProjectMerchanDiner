package spms.vo;

public class Customer {

	protected String id;
	protected String password;
	protected String name;
	protected String nickname;
	protected String address;
	protected String signup_path;
	protected String pi_accept;
	protected String email;
	
	
	
	public String getId() {
		return id;
	}
	public Customer setId(String id) {
		this.id = id;
		return this;
	}
	public String getPassword() {
		return password;
	}
	public Customer setPassword(String password) {
		this.password = password;
		return this;
	}
	public String getName() {
		return name;
	}
	public Customer setName(String name) {
		this.name = name;
		return this;
	}
	public String getNickname() {
		return nickname;
	}
	public Customer setNickname(String nickname) {
		this.nickname = nickname;
		return this;
	}
	public String getAddress() {
		return address;
	}
	public Customer setAddress(String address) {
		this.address = address;
		return this;
	}
	public String getSignup_path() {
		return signup_path;
	}
	public Customer setSignup_path(String signup_path) {
		this.signup_path = signup_path;
		return this;
	}
	public String getPi_accept() {
		return pi_accept;
	}
	public Customer setPi_accept(String pi_accept) {
		this.pi_accept = pi_accept;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Customer setEmail(String email) {
		this.email = email;
		return this;
	}
	
	
	
}
