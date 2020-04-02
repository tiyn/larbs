# Calendar
To use a terminal calendar the following programs are needed.
| programm   | description             |
| ---------- | ----------------------- |
| khal       | terminal calendar       |
| vdirsyncer | sync tool for calendars |

## Installation and configuration
To configure vdirsyncer edit a file in ```~/.config/vdirsyncer/config```.

```
[general]
status_path = "~/.cache/vdirsyncer/status"

#calendar
[pair private_calendar]
a = "private_calendar_local"
b = "private_calendar_remote"
collections = ["from a", "from b"]
metadata = ["color"]

[storage private_calendar_local]
type = "filesystem"
path = "~/.local/share/pim/calendars/private_calendar"
fileext = ".ics"

[storage private_calendar_remote]
type = "caldav"
url = "https://<url>"
auth = "basic"
username = "<username>"
password = "<password>"

```

After that initialize vdirsyncer.

```vdirsyncer discover && vdirsyncer metasync```

And keep regularly syncing your data (crontab).
The command to sync is the following.

```vdirsyncer sync```

Finally add a ```~/.config/khal/config``` and you're ready to go.

```
[calendars]

[[calendars]]
path = ~/.local/share/pim/calendars/*/*
type = discover
```


# Contacts
To use a terminal addressbook the following programs are needed.
| programm   | description             |
| ---------- | ----------------------- |
| khard      | terminal addressbook    |
| vdirsyncer | sync tool for calendars |

## Installation and configuration
To configure vdirsyncer edit a file in ```~/.config/vdirsyncer/config```.

```
[general]
status_path = "~/.cache/vdirsyncer/status"

#contacts
[pair private_contacts]
a = "private_contacts_local"
b = "private_contacts_remote"
collections = ["from a", "from b"]

[storage private_contacts_local]
type = "filesystem"
path = "~/.local/share/pim/contacts"
fileext = ".vcf"

[storage private_contacts_remote]
type = "carddav"
url = "https://<url>"
username = "<username>"
password = "<password>"
auth = "basic"
```

After that initialize vdirsyncer.

```vdirsyncer discover && vdirsyncer metasync```

And keep regularly syncing your data (crontab).
The command to sync is the following.

```vdirsyncer sync```

Now you just need to add and configure the config and youre done.

```
mkdir ~/.config/khard
cp /usr/share/doc/khard/khard.conf.example ~/.config/khard/khard.conf
```

# Mutt
These are a bunch of programs to be able to use lukesmithxyz's mutt-wizard,
which will be able to setup your neomutt acordingly.

| program     | description           |
| ----------- | --------------------- |
| neomutt     | mail program          |
| isync       | syncs mail            |
| msmtp       | sends mail            |
| pass        | encrypts passwords    |
| mutt-wizard | autoconfigure neomutt |

The mutt-wizard AUR package is slightly outdated.
Try to use the [git version](https://github.com/LukeSmithxyz/mutt-wizard) to get the latest mutt-wizard.

## Installation and configuration
After the basic installation you will be able to:

``` mw add ``` to add mailaccounts

``` mw ls ``` to list existing ones

``` mw pass ``` to revise passwords

``` mw delete ``` to delete accounts

``` mw purge ``` to delete all accounts and settings

``` mw cron ``` toggle a cronjob to sync mail

## Use khard in mutt
To use your khard addressbook in mutt just add the following lines to your ```~/.config/mutt/muttrc```.

```
set query_command= "khard email --parsable --search-in-source-files %s"
bind editor <Tab> complete-query
bind editor ^T complete
macro index,pager A \
	"<pipe message>khard add-email<return>" \
	"add the sender email address to khard"
```

You can just tab-complete the email-addresses.
You can also add new ones by pressing A.
