package com.websiteModel.entity;

import javax.persistence.*;


    @Entity
    @Table( name = "user")
    public class User {

        @Id
        private Long id;

        @Column(name = "username")
        private String login;

        @Column(name = "password")
        private String password;

        @Column(name = "role")
        private String role;

        @Lob
        @Column(name = "avatarUrl")
        private String avatarUrl;

        public User() {}

        public User(String login, String password, String role) {
            this.login = login;
            this.password = password;
            this.role = role;
        }

        public String getLogin() {
            return login;
        }

        public String getPassword() { return password; }

        public void setLogin(String login) {
            this.login = login;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public Long getId() { return id; }

        public void setId(Long id) { this.id = id; }

        public void setRole(String role) { this.role = role; }

        public String getRole() { return role; }

        public String getAvatarUrl() { return avatarUrl; }

        public void setAvatarUrl(String avatarUrl) { this.avatarUrl = avatarUrl; }
    }



