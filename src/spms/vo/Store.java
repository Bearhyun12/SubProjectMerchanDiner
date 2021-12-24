package spms.vo;

public class Store {
	private int store_num;
	private String store_name;
	private String store_address;
	private String type;
	private String longitude;
	private String latitude;
	private String hashTag;
	private String id;
	
	public int getStore_num() {
		return store_num;
	}
	public Store setStore_num(int store_num) {
		this.store_num = store_num;
		return this;
	}
	public String getStore_name() {
		return store_name;
	}
	public Store setStore_name(String store_name) {
		this.store_name = store_name;
		return this;
	}
	public String getStore_address() {
		return store_address;
	}
	public Store setStore_address(String store_address) {
		this.store_address = store_address;
		return this;
	}
	public String getType() {
		return type;
	}
	public Store setType(String type) {
		this.type = type;
		return this;
	}
	public String getLongitude() {
		return longitude;
	}
	public Store setLongitude(String longitude) {
		this.longitude = longitude;
		return this;
	}
	public String getLatitude() {
		return latitude;
	}
	public Store setLatitude(String latitude) {
		this.latitude = latitude;
		return this;
	}
	public String getHashTag() {
		return hashTag;
	}
	public Store setHashTag(String hashTag) {
		this.hashTag = hashTag;
		return this;
	}
	
	public String getId() {
		return id;
	}
	public Store setId(String id) {
		this.id = id;
		return this;
	}
	@Override
	public String toString() {
		return "Store [store_num=" + store_num + ", store_name=" + store_name + ", store_address=" + store_address
				+ ", type=" + type + ", longitude=" + longitude + ", latitude=" + latitude + ", hashTag=" + hashTag
				+ ", id=" + id + "]";
	}
	
	
	
	
}
