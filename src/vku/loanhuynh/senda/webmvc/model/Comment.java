package vku.loanhuynh.senda.webmvc.model;

public class Comment {
	
	private String id;
	private String exchange_id;
	private String name;
	private String email;
	private String content;
	private String created;
	public Comment() {
		super();
	}
	public Comment(String id, String exchange_id, String name, String email, String content, String created) {
		super();
			this.id = id;
			this.exchange_id = exchange_id;
			this.name = name;
			this.email = email;
			this.content = content;
			this.created = created;
	
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getExchange_id() {
		return exchange_id;
	}
	public void setExchange_id(String exchange_id) {
		this.exchange_id = exchange_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	
	@Override
	public String toString() {
		return "Comment [id=" + id + ", exchange_id=" + exchange_id +", name ="+ name +", email=" + email + ", content=" 
				+ content +", created=" + created +"]";
	}
	

}
