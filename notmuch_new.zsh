#!/usr/bin/zsh

function index_new() {
	notmuch new
	notmuch tag +inbox +unread -new -- tag:new

	#My emails
	myaddresses=(
		"ddyoung@iastate.edu"
		"dyoung.math@gmail.com"
		"derekyoungmath@gmail.com"
		"young13@stolaf.com"
		"dyoung@mtholyoke.edu"
	)
	from_string="from:dowewas2@gmail.com"
	to_string="not:to:dowewas2@gmail.com"
	for repo in "${myaddresses[@]}"
	do
		from_string="from:${repo} or ${from_string} "
		to_string="not:to:${repo} or ${to_string} "
	done
	my_string="(${from_string}) and (${to_string})"
	notmuch tag -inbox +sent +Sent -- ${my_string}

	# Math Course
	mtag="m211_s21_1--p"
	notmuch tag +${mtag} -inbox -- "to:math211-s21-1-g@mtholyoke.edu or Cc:math211-s21-1-g@mtholyoke.edu or Bcc:math211-s21-1-g@mtholyoke.edu" and tag:unread
	student_names=(
		"<badr22d@mtholyoke.edu>"
		"<bhati23s@mtholyoke.edu>"
		"<herto22d@mtholyoke.edu>"
		"<kodua22g@mtholyoke.edu>"
		"<liu223y@mtholyoke.edu>"
		"<magne22a@mtholyoke.edu>"
		"<ring22e@mtholyoke.edu>"
		"<tadlo22a@mtholyoke.edu>"
		"<wang43q@mtholyoke.edu>"
	)
	student_string="from:<dummy@email.com>"
	for repo in "${student_names[@]}"
	do
		student_string="from:${repo} or ${student_string} "
	done
	student_string="(${student_string}) and (tag:unread) and (not to:math211-s21-1-g@mtholyoke.edu)"
	notmuch tag +m211_s21_1_inbox -inbox -- ${student_string}
	for i in {1..7}
	do
		notmuch tag -inbox +m211_s21_1_hw_$i:f 'date:2021-01-17..now and subject:"/\[Math 211-1\] Homework '${i}'/" and not tag:Sent and not tag:'${mtag}''
		notmuch tag -inbox +m211_s21_1_ass_$i:f 'date:2021-01-17..now and subject:"/\[Math 211-1\] Assessment '${i}'/" and not tag:Sent and not tag:'${mtag}''
		notmuch tag -inbox +m211_s21_1_j_$i:f 'date:2021-01-17..now and subject:"/\[Math 211-1\] Journal '${i}'/" and not tag:Sent and not tag:'${mtag}''
	done

	source $HOME/courses/spring21_4/notmuch.zsh

	notmuch tag +ultimate -inbox -- "to:mhc-ultimate-g@mtholyoke.edu or Cc:mhc-ultimate-g@mtholyoke.edu or Bcc:mhc-ultimate-g@mtholyoke.edu" and tag:unread
	notmuch tag +matharxiv -inbox -- subject:'math daily Subj-class mailing' and tag:unread
	notmuch tag +parenting -inbox -- from:"NYT Parenting <nytdirect@nytimes.com>" and tag:unread
	notmuch tag +nytimes -inbox -- from:"The New York Times <nytdirect@nytimes.com>" and tag:unread
	notmuch tag +pbskids -inbox -- "from:pbsupdates@pbs.org" and tag:unread
	notmuch tag +klearning -inbox -- "from:mailroom@k5learning.com" and tag:unread
	notmuch tag +music -inbox -- from:"sam@ncmc.net" and tag:unread
	notmuch tag +lions -inbox -unread -- from:"no-reply@lions.nfl.net" and tag:unread
	# notmuch tag +math232  -inbox -- subject:"Math 232" and tag:unread and not:to:'math232_s20-g@mtholyoke.edu'
	notmuch tag +dof -inbox -- subject:"Dean of Faculty and Events" and from:"jwestern@mtholyoke.edu"

	# Finances
	notmuch tag +finance -inbox -- "from:capitalone@notification.capitalone.com or
	from:capitalone@notification.capitalone.com or
	from:sheldp@sheld.org  or
	from:SheldBill@sheld.org  or
	from:CostomerService@Navient.com or
	from:AmericanExpress@welcome.aexp.com or 
	from:email@alerts.ally.com or 
	from:info@borrowerservices.mygreatlakes.org or 
	from:alerts@parkmobileglobal.com or 
	from:alerts@notify.wellsfargo.com or 
	from:familyinfocenter@brighthorizons.com or and not:subject:Confirmation of Payment
	from:do_not_reply@uasecho.com or 
	from:no-reply@alertsp.chase.com or 
	from:no-reply@ColumbiaGasMA.com or 
	from:noreply@sprint.com or 
	from:no_reply@email.apple.com or 
	from:ebill@SprintCustServ.com or 
	from:customerservice@email.esurance.com or 
	from:Chase@e.chase.com" and tag:unread
	my_rules_read=(
		"amazon--s:from:/amazon.com/"
		"sigma_xi--s:from:sigmaxi@multibriefs.com"
		"south_hadley--s:from:listserv@civicplus.com"
		"sigma_xi--s:from:DoNotReply@ConnectedCommunity.org"
		"daycare:subject:The Gorse Children's Center Check-*"
		"daycare:subject:Weston at The Gorse Children's Center"
		"daycarereport--s:subject:Daily Report for Weston"
		"ledger--s:to:ledger-cli@googlegroups.com"
		"ilas--s:from:ilasic@uregina.ca"
	)
	my_rules=(
		#MHC
		"faculty-a:subject:[faculty-a]"
		"faculty-l:subject:[faculty-l]"
		"mathstat-tea:to:majorsminorsmath-stat-g@mtholyoke.edu"
		"faculty-db--p:to:facultydiscussion-g@mtholyoke.edu"
		"google-doc--p:from:comments-noreply@docs.google.com"
		"moodle_fit--p:subject:FIT Course Re-Design Institute"
		"mathstat-d:to:mathstat-d@mtholyoke.edu"
		"mathstat-d:subject:[mathstat-d]"
		"mathclub-l:to:mathclub-l@mtholyoke.edu"
		"graders:to:eveninghelp-graders-g@mtholyoke.edu"
		#Newsletters
		"wordoftheday--p:from:mwwotd@wotd.m-w.com"
		"jokeoftheday--p:from:jokes@ajokeaday.com"
		"archlinux--s:to:arch-announce@archlinux.org"
		#Bills
		"bills:from:myaccount@Columbiagasma.com and subject:Columbia Gas of Massachusetts Bill Ready"
		"bills:from:myaccount@Columbiagasma.com and subject:Columbia Gas of Massachusetts Scheduled Payment Submission"
		"bills:from:customerservice@sheld.org and subject:E-Bill Notification"
		"bills:from:online.communications@alerts.comcast.net and subject:Your bill is ready to view"
		"bills:from:online.communications@alerts.comcast.net and subject:XFINITY payment update"
		"bills:from:online.communications@alerts.comcast.net and subject:Thanks for your payment"
		"bills:from:ebill@SprintCustServ.com and subject:Your Sprint bill is now available online"
		"bills:from:noreply@sprint.com and subject:Sprint Account Notice for XXXXX6037"
		"bills:from:no-reply@alertsp.chase.com and subject:Your credit card statement is ready"
		"bills:from:no-reply@alertsp.chase.com and subject:Thank you for scheduling your credit card payment"
		"bills:from:capitalone@notification.capitalone.com and subject:Your card statement is ready"
		"bills:from:capitalone@notification.capitalone.com and subject:Your payment of "
		"bills:from:AmericanExpress@welcome.aexp.com and subject:Important Notice"
		"bills:from:CustomerService@navient.com and subject:Your monthly statement is ready"
		"bills:from:info@borrowerservices.mygreatlakes.org and subject:Your Student Loan Payment Is Due"
		"bills:from:info@borrowerservices.mygreatlakes.org and subject:Your Monthly Billing Statement Is Available"
		"bills:from:familyinfocenter@brighthorizons.com and subject:Confirmation of Payment"
		"bills:from:gorse@brighthorizons.com and subject:The Gorse Children's Center  - Statement"
		"bills:from:no_reply@email.apple.com and subject:Your receipt from Apple"

		#Github
		"gh_ledger:to:ledger@noreply.github.com"
		"gh_neovim:to:neovim@noreply.github.com"
		"gh_neomutt:to:neomutt@noreply.github.com"
		"gh_fzf:to:fzf@noreply.github.com"
		"gh_vim-term:to:vim-terminal-help@noreply.github.com"
		"gh_asyncrun:to:asyncrun.vim@noreply.github.com"

		"mrc:from:notification@pbworks.com"
	)

	# Github
	github_repos=(
		# neovim
		# neomutt
		# fzf
		fzf.vim
		fzf-preview.vim
		git
		vim-fugitive
		qutebrowser
		tmux
		vimtex
		vimwiki
		vifm
		vifm.vim
		pendulum
		gv.vim
		python-fire
		csv.vim
		vim-easymotion
		ohmyzsh
		# ledger
		)
	for repo in "${github_repos[@]}"
	do
		notmuch tag +"gh_$repo" -inbox -- to:"$repo@noreply.github.com" and tag:unread
	done
	for i in "${my_rules[@]}"
	do
		my_tag=$(echo $i | cut -d ':' -f1)
		my_query=$(echo $i | cut -d ':' -f2-)
		notmuch tag +"$my_tag" -inbox -- "$my_query and tag:unread"
	done
	for i in "${my_rules_read[@]}"
	do
		my_tag_read=$(echo $i | cut -d ':' -f1)
		my_query_read=$(echo $i | cut -d ':' -f2-)
		notmuch tag +"$my_tag_read" -inbox -unread -- "$my_query_read and tag:unread"
	done
}

function index_all() {
	index_new
}

${1}
