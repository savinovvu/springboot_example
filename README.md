This is a simple crud project.
Front-end technology: freemarker, css, bootstrap, js, jQuery, datatables.
Back-end technology: spring-boot, spring-data-jpa, hibernate, MySQL, Tomcat.
Setting up the project: spring-profiles, yaml.
build system: gradle.

Project have 2 profiles: init and populate.
The init profile simply starts the project and creates a schema and a table in a database if need.
The populate profile does the same, and also deletes and populates the data in the table.
Scripts for start in *nix system: start_init.sh, start_populate.sh.
Scripts for start on windows: start_init4windows.bat, start_populate4windows.bat.
