ldap-shadow
===========

Shadow package compatible LDAP account administration tools.
The purpose of these LDAP user account and group management tools is to provide
command line interface which is mostly compatible with corresponding local user
account and group management tools from the shadow package.

Dependencies
------------

 * **ldapmodify**, **ldappasswd** and **ldapsearch**
   from the openldap package (required)
 * **help2man**
   from the help2man package for documentation (recommended)
 * **pwqcheck** and **pwqgen**
   from the passwdqc package for password quality checking (recommended)

User commands
-------------

 * **ldap-chfn**:   Change the full name, the home, mobile and work phone
                    numbers and the room number of an LDAP user account on
                    an LDAP server.
 * **ldap-chsh**:   Change the login shell of an LDAP user account on an LDAP
                    server.
 * **ldap-passwd**: Change the password of an LDAP user account on an LDAP
                    server.
 * **ldap-pwqgen**: Generate a quality controllable random passphrase for
                    an LDAP user account.


Administrative commands
-----------------------

 * **ldap-groupadd**: Add a new LDAP group to an LDAP server
                      using administrative privileges.
 * **ldap-groupdel**: Delete an LDAP group from an LDAP server
                      using administrative privileges.
 * **ldap-groupmod**: Modify an LDAP group on an LDAP server
                      using administrative privileges.
 * **ldap-useradd**:  Add a new LDAP user account to an LDAP server
                      using administrative privileges.
 * **ldap-userdel**:  Delete an LDAP user account from an LDAP server
                      using administrative privileges.
 * **ldap-usermod**:  Modify an LDAP user account on an LDAP server
                      using administrative privileges.

Copyright
---------

Copyright (C) 2012 - 2021 Eero Häkkinen <Eero+ldap-shadow@Häkkinen.fi>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
