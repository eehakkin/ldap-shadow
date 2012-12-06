ldap-shadow
===========

Shadow package compatible LDAP account administration tools.
The purpose of these LDAP user account and group management tools is to provide
command line interface which is mostly compatible with corresponding local user
account and group management tools from the shadow package.

User commands
-------------

 * **ldap-chfn**:   Change the full name, the home, mobile and work phone
                    numbers and the room number of an LDAP user account on
                    an LDAP server.
 * **ldap-chsh**:   Change the login shell of an LDAP user account on an LDAP
                    server.
 * **ldap-passwd**: Change the password of an LDAP user account on an LDAP
                    server.
 * **passwd**:      A wrapper for the passwd(1) command. Bypasses the PAM stack
                    during the grace period in order to work-a-round the lack
                    of slapo-ppolicy(5) compatibility in the pam_ldap(8) module
                    from the nss-pam-ldapd package.

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
