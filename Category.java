package com.job.entities;

public class Category {
		private int cid;
		private String type_of_job;
		private String description;
		
		public Category(int cid, String type_of_job, String description) {
			super();
			this.cid = cid;
			this.type_of_job = type_of_job;
			this.description = description;
		}

		public Category() {
			super();
		}

		public Category(String type_of_job, String description) {
			super();
			this.type_of_job = type_of_job;
			this.description = description;
		}

		public int getCid() {
			return cid;
		}

		public void setCid(int cid) {
			this.cid = cid;
		}

		public String getType_of_job() {
			return type_of_job;
		}

		public void setType_of_job(String type_of_job) {
			this.type_of_job = type_of_job;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}
		
		
		
}
