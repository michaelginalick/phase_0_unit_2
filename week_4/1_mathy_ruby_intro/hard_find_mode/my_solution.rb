# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution




# 3. Refactored Solution
Last login: Mon Apr 21 21:50:50 on ttys000
MG:~ michaelginalick$ rvm use 2.0.0-p247
Using /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247
MG:~ michaelginalick$ ruby -v
ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin13.1.0]
MG:~ michaelginalick$ gem install rails
Fetching: thread_safe-0.3.3.gem (100%)
Successfully installed thread_safe-0.3.3
Fetching: minitest-5.3.3.gem (100%)
Successfully installed minitest-5.3.3
Fetching: tzinfo-1.1.0.gem (100%)
Successfully installed tzinfo-1.1.0
Fetching: i18n-0.6.9.gem (100%)
Successfully installed i18n-0.6.9
Fetching: activesupport-4.1.0.gem (100%)
Successfully installed activesupport-4.1.0
Fetching: erubis-2.7.0.gem (100%)
Successfully installed erubis-2.7.0
Fetching: builder-3.2.2.gem (100%)
Successfully installed builder-3.2.2
Fetching: actionview-4.1.0.gem (100%)
Successfully installed actionview-4.1.0
Fetching: rack-1.5.2.gem (100%)
Successfully installed rack-1.5.2
Fetching: rack-test-0.6.2.gem (100%)
Successfully installed rack-test-0.6.2
Fetching: actionpack-4.1.0.gem (100%)
Successfully installed actionpack-4.1.0
Fetching: activemodel-4.1.0.gem (100%)
Successfully installed activemodel-4.1.0
Fetching: arel-5.0.1.20140414130214.gem (100%)
Successfully installed arel-5.0.1.20140414130214
Fetching: activerecord-4.1.0.gem (100%)
Successfully installed activerecord-4.1.0
Fetching: mime-types-1.25.1.gem (100%)
Successfully installed mime-types-1.25.1
Fetching: polyglot-0.3.4.gem (100%)
Successfully installed polyglot-0.3.4
Fetching: treetop-1.4.15.gem (100%)
Successfully installed treetop-1.4.15
Fetching: mail-2.5.4.gem (100%)
Successfully installed mail-2.5.4
Fetching: actionmailer-4.1.0.gem (100%)
Successfully installed actionmailer-4.1.0
Fetching: thor-0.19.1.gem (100%)
Successfully installed thor-0.19.1
Fetching: railties-4.1.0.gem (100%)
Successfully installed railties-4.1.0
Fetching: tilt-1.4.1.gem (100%)
Successfully installed tilt-1.4.1
Fetching: multi_json-1.9.2.gem (100%)
Successfully installed multi_json-1.9.2
Fetching: hike-1.2.3.gem (100%)
Successfully installed hike-1.2.3
Fetching: sprockets-2.12.1.gem (100%)
Successfully installed sprockets-2.12.1
Fetching: sprockets-rails-2.1.3.gem (100%)
Successfully installed sprockets-rails-2.1.3
Fetching: rails-4.1.0.gem (100%)
Successfully installed rails-4.1.0
Parsing documentation for actionmailer-4.1.0
Installing ri documentation for actionmailer-4.1.0
Parsing documentation for actionpack-4.1.0
Installing ri documentation for actionpack-4.1.0
Parsing documentation for actionview-4.1.0
Installing ri documentation for actionview-4.1.0
Parsing documentation for activemodel-4.1.0
Installing ri documentation for activemodel-4.1.0
Parsing documentation for activerecord-4.1.0
Installing ri documentation for activerecord-4.1.0
Parsing documentation for activesupport-4.1.0
unable to convert "\x80" from ASCII-8BIT to UTF-8 for lib/active_support/values/unicode_tables.dat, skipping
Installing ri documentation for activesupport-4.1.0
Parsing documentation for arel-5.0.1.20140414130214
Installing ri documentation for arel-5.0.1.20140414130214
Parsing documentation for builder-3.2.2
Installing ri documentation for builder-3.2.2
Parsing documentation for erubis-2.7.0
Installing ri documentation for erubis-2.7.0
Parsing documentation for hike-1.2.3
Installing ri documentation for hike-1.2.3
Parsing documentation for i18n-0.6.9
Installing ri documentation for i18n-0.6.9
Parsing documentation for mail-2.5.4
unable to convert "\x80" from ASCII-8BIT to UTF-8 for lib/mail/values/unicode_tables.dat, skipping
Installing ri documentation for mail-2.5.4
Parsing documentation for mime-types-1.25.1
Installing ri documentation for mime-types-1.25.1
Parsing documentation for minitest-5.3.3
Installing ri documentation for minitest-5.3.3
Parsing documentation for multi_json-1.9.2
Installing ri documentation for multi_json-1.9.2
Parsing documentation for polyglot-0.3.4
Installing ri documentation for polyglot-0.3.4
Parsing documentation for rack-1.5.2
Installing ri documentation for rack-1.5.2
Parsing documentation for rack-test-0.6.2
Installing ri documentation for rack-test-0.6.2
Parsing documentation for rails-4.1.0
unable to convert "\xFF" from ASCII-8BIT to UTF-8 for guides/assets/images/akshaysurve.jpg, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/belongs_to.png, skipping
unable to convert "\xF4" from ASCII-8BIT to UTF-8 for guides/assets/images/book_icon.gif, skipping
unable to convert "\x91" from ASCII-8BIT to UTF-8 for guides/assets/images/bullet.gif, skipping
unable to convert "\xF5" from ASCII-8BIT to UTF-8 for guides/assets/images/chapters_icon.gif, skipping
unable to convert "\xF5" from ASCII-8BIT to UTF-8 for guides/assets/images/check_bullet.gif, skipping
unable to convert "\xF4" from ASCII-8BIT to UTF-8 for guides/assets/images/credits_pic_blank.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/csrf.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/edge_badge.png, skipping
unable to convert "\x9E" from ASCII-8BIT to UTF-8 for guides/assets/images/favicon.ico, skipping
unable to convert "\xF0" from ASCII-8BIT to UTF-8 for guides/assets/images/feature_tile.gif, skipping
unable to convert "\xF0" from ASCII-8BIT to UTF-8 for guides/assets/images/footer_tile.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/fxn.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/article_with_comments.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/challenge.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/confirm_dialog.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/forbidden_attributes_for_new_article.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/form_with_errors.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/index_action_with_edit_link.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/new_article.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/rails_welcome.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/routing_error_no_controller.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/routing_error_no_route_matches.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/show_action_for_articles.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/template_is_missing_articles_new.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/unknown_action_create_for_articles.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/getting_started/unknown_action_new_for_articles.png, skipping
unable to convert "\xF0" from ASCII-8BIT to UTF-8 for guides/assets/images/grey_bullet.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/habtm.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/has_many.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/has_many_through.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/has_one.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/has_one_through.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/header_backdrop.png, skipping
unable to convert "\xF0" from ASCII-8BIT to UTF-8 for guides/assets/images/header_tile.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_html_safe.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_localized_pirate.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_translated_en.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_translated_pirate.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_translation_missing.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/i18n/demo_untranslated.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/1.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/10.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/11.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/12.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/13.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/14.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/15.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/2.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/3.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/4.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/5.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/6.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/7.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/8.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/callouts/9.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/caution.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/example.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/home.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/important.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/next.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/note.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/prev.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/tip.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/up.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/icons/warning.png, skipping
unable to convert "\xF5" from ASCII-8BIT to UTF-8 for guides/assets/images/nav_arrow.gif, skipping
unable to convert "\xFF" from ASCII-8BIT to UTF-8 for guides/assets/images/oscardelben.jpg, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/polymorphic.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/radar.png, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/rails4_features.png, skipping
unable to convert "\xFF" from ASCII-8BIT to UTF-8 for guides/assets/images/rails_guides_kindle_cover.jpg, skipping
unable to convert "\xEC" from ASCII-8BIT to UTF-8 for guides/assets/images/rails_guides_logo.gif, skipping
unable to convert "\x8C" from ASCII-8BIT to UTF-8 for guides/assets/images/rails_logo_remix.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/session_fixation.png, skipping
unable to convert "\x80" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_grey.gif, skipping
unable to convert "\x80" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_info.gif, skipping
unable to convert "\x80" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_note.gif, skipping
unable to convert "\x80" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_red.gif, skipping
unable to convert "\x80" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_yellow.gif, skipping
unable to convert "\x89" from ASCII-8BIT to UTF-8 for guides/assets/images/tab_yellow.png, skipping
unable to convert "\xFF" from ASCII-8BIT to UTF-8 for guides/assets/images/vijaydev.jpg, skipping
Installing ri documentation for rails-4.1.0
Parsing documentation for railties-4.1.0
Installing ri documentation for railties-4.1.0
Parsing documentation for sprockets-2.12.1
Installing ri documentation for sprockets-2.12.1
Parsing documentation for sprockets-rails-2.1.3
Installing ri documentation for sprockets-rails-2.1.3
Parsing documentation for thor-0.19.1
Installing ri documentation for thor-0.19.1
Parsing documentation for thread_safe-0.3.3
Installing ri documentation for thread_safe-0.3.3
Parsing documentation for tilt-1.4.1
Installing ri documentation for tilt-1.4.1
Parsing documentation for treetop-1.4.15
Installing ri documentation for treetop-1.4.15
Parsing documentation for tzinfo-1.1.0
Installing ri documentation for tzinfo-1.1.0
27 gems installed
MG:~ michaelginalick$ rails -v
Rails 4.1.0
MG:~ michaelginalick$ pwd
/Users/michaelginalick
MG:~ michaelginalick$ ls
Adobe Dreamweaver CS5.5		Movies
Adobe Flash Professional CS5.5	Music
Applications			Pictures
Desktop				Public
Documents			Sites
Downloads			michaelginalick.guthub.io
Dropbox				phase_0_unit_1
Hello-World			phase_0_unit_2
Library
MG:~ michaelginalick$ cd phase_0_unit_2
MG:phase_0_unit_2 michaelginalick$ ls
README.md	references	week_4		week_5		week_6
MG:phase_0_unit_2 michaelginalick$ cd week_4
MG:week_4 michaelginalick$ ls
1_mathy_ruby_intro		6_cipher_challenge
2_creative			7_refactor
3_group_research_methods	8_technical_blog.md
4_nums_commas_solo_challenge	9_cultural_blog.md
5_pad_array			README.md
MG:week_4 michaelginalick$ cd 1_mathy_ruby_intro
MG:1_mathy_ruby_intro michaelginalick$ ls
easy_add_it_up			harder_calculate_median
hard_find_mode			medium_calculate_letter_grade
MG:1_mathy_ruby_intro michaelginalick$ cd easy_add_it_up
MG:easy_add_it_up michaelginalick$ ls
array_total_spec.rb	my_solution.rb		readme.md
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
-bash: rspec: command not found
MG:easy_add_it_up michaelginalick$ gem which rspec
ERROR:  Can't find ruby library file or shared library rspec
MG:easy_add_it_up michaelginalick$ spec array_total_spec.rb
-bash: spec: command not found
MG:easy_add_it_up michaelginalick$ rspc 
-bash: rspc: command not found
MG:easy_add_it_up michaelginalick$ rake rspec
rake aborted!
No Rakefile found (looking for: rakefile, Rakefile, rakefile.rb, Rakefile.rb)

(See full trace by running task with --trace)
MG:easy_add_it_up michaelginalick$ which spec
MG:easy_add_it_up michaelginalick$ which rspec
MG:easy_add_it_up michaelginalick$ rails -v
Rails 4.1.0
MG:easy_add_it_up michaelginalick$ gem install rspec-rails
Fetching: rspec-core-2.14.8.gem (100%)
Successfully installed rspec-core-2.14.8
Fetching: diff-lcs-1.2.5.gem (100%)
Successfully installed diff-lcs-1.2.5
Fetching: rspec-expectations-2.14.5.gem (100%)
Successfully installed rspec-expectations-2.14.5
Fetching: rspec-mocks-2.14.6.gem (100%)
Successfully installed rspec-mocks-2.14.6
Fetching: rspec-rails-2.14.2.gem (100%)
Successfully installed rspec-rails-2.14.2
Parsing documentation for diff-lcs-1.2.5
Installing ri documentation for diff-lcs-1.2.5
Parsing documentation for rspec-core-2.14.8
Installing ri documentation for rspec-core-2.14.8
Parsing documentation for rspec-expectations-2.14.5
Installing ri documentation for rspec-expectations-2.14.5
Parsing documentation for rspec-mocks-2.14.6
Installing ri documentation for rspec-mocks-2.14.6
Parsing documentation for rspec-rails-2.14.2
Installing ri documentation for rspec-rails-2.14.2
5 gems installed
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
FFFFFFFF

Failures:

  1) total is defined as a method
     Failure/Error: defined?(total).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./array_total_spec.rb:8:in `block (2 levels) in <top (required)>'

  2) total requires a single argument
     Failure/Error: method(:total).arity.should eq 1
     NameError:
       undefined method `total' for class `RSpec::Core::ExampleGroup::Nested_1'
     # ./array_total_spec.rb:12:in `method'
     # ./array_total_spec.rb:12:in `block (2 levels) in <top (required)>'

  3) total returns the correct total of array 1
     Failure/Error: total(array_1).should eq 27
     NoMethodError:
       undefined method `total' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fe828aba960>
     # ./array_total_spec.rb:16:in `block (2 levels) in <top (required)>'

  4) total returns the correct total of array 2
     Failure/Error: total(array_2).should eq 43
     NoMethodError:
       undefined method `total' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fe828abaaa0>
     # ./array_total_spec.rb:20:in `block (2 levels) in <top (required)>'

  5) sentence_maker is defined as a method
     Failure/Error: defined?(sentence_maker).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./array_total_spec.rb:29:in `block (2 levels) in <top (required)>'

  6) sentence_maker requires a single argument
     Failure/Error: method(:sentence_maker).arity.should eq 1
     NameError:
       undefined method `sentence_maker' for class `RSpec::Core::ExampleGroup::Nested_2'
     # ./array_total_spec.rb:33:in `method'
     # ./array_total_spec.rb:33:in `block (2 levels) in <top (required)>'

  7) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fe829166840>
     # ./array_total_spec.rb:37:in `block (2 levels) in <top (required)>'

  8) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fe829165378>
     # ./array_total_spec.rb:41:in `block (2 levels) in <top (required)>'

Finished in 0.00238 seconds
8 examples, 8 failures

Failed examples:

rspec ./array_total_spec.rb:7 # total is defined as a method
rspec ./array_total_spec.rb:11 # total requires a single argument
rspec ./array_total_spec.rb:15 # total returns the correct total of array 1
rspec ./array_total_spec.rb:19 # total returns the correct total of array 2
rspec ./array_total_spec.rb:28 # sentence_maker is defined as a method
rspec ./array_total_spec.rb:32 # sentence_maker requires a single argument
rspec ./array_total_spec.rb:36 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:40 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
....FFFF

Failures:

  1) sentence_maker is defined as a method
     Failure/Error: defined?(sentence_maker).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./array_total_spec.rb:35:in `block (2 levels) in <top (required)>'

  2) sentence_maker requires a single argument
     Failure/Error: method(:sentence_maker).arity.should eq 1
     NameError:
       undefined method `sentence_maker' for class `RSpec::Core::ExampleGroup::Nested_2'
     # ./array_total_spec.rb:39:in `method'
     # ./array_total_spec.rb:39:in `block (2 levels) in <top (required)>'

  3) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fd7393920e8>
     # ./array_total_spec.rb:43:in `block (2 levels) in <top (required)>'

  4) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fd739390a18>
     # ./array_total_spec.rb:47:in `block (2 levels) in <top (required)>'

Finished in 0.00321 seconds
8 examples, 4 failures

Failed examples:

rspec ./array_total_spec.rb:34 # sentence_maker is defined as a method
rspec ./array_total_spec.rb:38 # sentence_maker requires a single argument
rspec ./array_total_spec.rb:42 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:46 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
/Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load': /Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/easy_add_it_up/array_total_spec.rb:55: syntax error, unexpected end-of-input, expecting keyword_end (SyntaxError)
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `each'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:80:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:17:in `block in autorun'
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array.concat{|first,x| first + x}
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./array_total_spec.rb:11:in `concat'
     # ./array_total_spec.rb:11:in `sentence_maker'
     # ./array_total_spec.rb:50:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.concat{|first,x| first + x}
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./array_total_spec.rb:11:in `concat'
     # ./array_total_spec.rb:11:in `sentence_maker'
     # ./array_total_spec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.0019 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:49 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:53 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "all my socks are dirty"
       
       (compared using ==)
     # ./array_total_spec.rb:50:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
       
       expected: "Alaska has over 586 thousand miles."
            got: "alaska has over 586 thousand miles"
       
       (compared using ==)
     # ./array_total_spec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.00212 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:49 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:53 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ ls
array_total_spec.rb	my_solution.rb		readme.md
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array.to_sentence
     NoMethodError:
       undefined method `to_sentence' for ["all", "my", "socks", "are", "dirty"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.to_sentence
     NoMethodError:
       undefined method `to_sentence' for ["alaska", "has", "over", 586, "thousand", "miles"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00207 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array[].to_sentence
     ArgumentError:
       wrong number of arguments (0 for 1..2)
     # ./array_total_spec.rb:10:in `[]'
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array[].to_sentence
     ArgumentError:
       wrong number of arguments (0 for 1..2)
     # ./array_total_spec.rb:10:in `[]'
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00204 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "all my socks are dirty"
       
       (compared using ==)
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
       
       expected: "Alaska has over 586 thousand miles."
            got: "alaska has over 586 thousand miles"
       
       (compared using ==)
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00228 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "all my socks are dirty"
       
       (compared using ==)
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
       
       expected: "Alaska has over 586 thousand miles."
            got: "alaska has over 586 thousand miles"
       
       (compared using ==)
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00319 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspc array_total_spec.rb
-bash: rspc: command not found
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array.to_sentence
     NoMethodError:
       undefined method `to_sentence' for ["all", "my", "socks", "are", "dirty"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.to_sentence
     NoMethodError:
       undefined method `to_sentence' for ["alaska", "has", "over", 586, "thousand", "miles"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00192 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: inspect MyList.array
     NameError:
       uninitialized constant MyList
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: inspect MyList.array
     NameError:
       uninitialized constant MyList
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00413 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array.split.each{|i| i.capitalize}.join(' ')
     NoMethodError:
       undefined method `split' for ["all", "my", "socks", "are", "dirty"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.split.each{|i| i.capitalize}.join(' ')
     NoMethodError:
       undefined method `split' for ["alaska", "has", "over", 586, "thousand", "miles"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00205 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "all my socks are dirty"
       
       (compared using ==)
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.each{|i| i.capitalize}.join(' ')
     NoMethodError:
       undefined method `capitalize' for 586:Fixnum
     # ./array_total_spec.rb:10:in `block in sentence_maker'
     # ./array_total_spec.rb:10:in `each'
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00214 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array[0].capitalize.join(" ")
     NoMethodError:
       undefined method `join' for "All":String
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array[0].capitalize.join(" ")
     NoMethodError:
       undefined method `join' for "Alaska":String
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00197 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: array.capitalize[0].join(" ")
     NoMethodError:
       undefined method `capitalize' for ["all", "my", "socks", "are", "dirty"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:49:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.capitalize[0].join(" ")
     NoMethodError:
       undefined method `capitalize' for ["alaska", "has", "over", 586, "thousand", "miles"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

Finished in 0.00299 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:48 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: str = array.capitalize[0]
     NoMethodError:
       undefined method `capitalize' for ["all", "my", "socks", "are", "dirty"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:50:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: str = array.capitalize[0]
     NoMethodError:
       undefined method `capitalize' for ["alaska", "has", "over", 586, "thousand", "miles"]:Array
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.00197 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:49 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:53 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array.map(&:upcase)
-bash: syntax error near unexpected token `('
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "All My Socks Are Dirty"
       
       (compared using ==)
     # ./array_total_spec.rb:50:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.map(&:capitalize).join(" ")
     NoMethodError:
       undefined method `capitalize' for 586:Fixnum
     # ./array_total_spec.rb:10:in `map'
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.00213 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:49 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:53 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
       
       expected: "All my socks are dirty."
            got: "ALL MY SOCKS ARE DIRTY"
       
       (compared using ==)
     # ./array_total_spec.rb:50:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: array.map(&:upcase).join(" ")
     NoMethodError:
       undefined method `upcase' for 586:Fixnum
     # ./array_total_spec.rb:10:in `map'
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.00202 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:49 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:53 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
........

Finished in 0.00319 seconds
8 examples, 0 failures
MG:easy_add_it_up michaelginalick$ :wq
-bash: :wq: command not found
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
......FF

Failures:

  1) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: words.map! { |x| x.class == String ? x : x.to_s }
     NameError:
       undefined local variable or method `words' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fe052264f78>
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:53:in `block (2 levels) in <top (required)>'

  2) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: words.map! { |x| x.class == String ? x : x.to_s }
     NameError:
       undefined local variable or method `words' for #<RSpec::Core::ExampleGroup::Nested_2:0x007fe05226f8d8>
     # ./array_total_spec.rb:10:in `sentence_maker'
     # ./array_total_spec.rb:57:in `block (2 levels) in <top (required)>'

Finished in 0.00187 seconds
8 examples, 2 failures

Failed examples:

rspec ./array_total_spec.rb:52 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:56 # sentence_maker returns the grammatically correct sentence of the second sentence
MG:easy_add_it_up michaelginalick$ :wq
-bash: :wq: command not found
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
........

Finished in 0.00317 seconds
8 examples, 0 failures
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ rspec array_total_spec.rb
/Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load': /Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/easy_add_it_up/array_total_spec.rb:56: syntax error, unexpected end-of-input, expecting keyword_end (SyntaxError)
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `each'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:80:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:17:in `block in autorun'
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ vi array_total_spec.rb
MG:easy_add_it_up michaelginalick$ ls
array_total_spec.rb	my_solution.rb		readme.md
MG:easy_add_it_up michaelginalick$ cd ../../
MG:week_4 michaelginalick$ pwd
/Users/michaelginalick/phase_0_unit_2/week_4
MG:week_4 michaelginalick$ ls
1_mathy_ruby_intro		6_cipher_challenge
2_creative			7_refactor
3_group_research_methods	8_technical_blog.md
4_nums_commas_solo_challenge	9_cultural_blog.md
5_pad_array			README.md
MG:week_4 michaelginalick$ cd 1_mathy_ruby_intro
MG:1_mathy_ruby_intro michaelginalick$ ls
easy_add_it_up			harder_calculate_median
hard_find_mode			medium_calculate_letter_grade
MG:1_mathy_ruby_intro michaelginalick$ hard_find_mode
-bash: hard_find_mode: command not found
MG:1_mathy_ruby_intro michaelginalick$ cd hard_find_mode
MG:hard_find_mode michaelginalick$ ls
mode_spec.rb	my_solution.rb	readme.md
MG:hard_find_mode michaelginalick$ rspec hard_find_mode
/Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load': cannot load such file -- /Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/hard_find_mode/hard_find_mode (LoadError)
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `each'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:80:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:17:in `block in autorun'
MG:hard_find_mode michaelginalick$ vi hard_find_mode
MG:hard_find_mode michaelginalick$ ls
hard_find_mode	mode_spec.rb	my_solution.rb	readme.md
MG:hard_find_mode michaelginalick$ rspec hard_find_mode
No examples found.


Finished in 0.00014 seconds
0 examples, 0 failures
MG:hard_find_mode michaelginalick$ pwd
/Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/hard_find_mode
MG:hard_find_mode michaelginalick$ ls
hard_find_mode	mode_spec.rb	my_solution.rb	readme.md
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
FFFFF

Failures:

  1) mode is defined
     Failure/Error: defined?(mode).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./mode_spec.rb:9:in `block (2 levels) in <top (required)>'

  2) mode requires a single argument
     Failure/Error: method(:mode).arity.should eq 1
     NameError:
       undefined method `mode' for class `RSpec::Core::ExampleGroup::Nested_1'
     # ./mode_spec.rb:13:in `method'
     # ./mode_spec.rb:13:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode when mode is a unique integer
     Failure/Error: mode(array_1).should eq [5]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fe30a08d190>
     # ./mode_spec.rb:17:in `block (2 levels) in <top (required)>'

  4) mode returns the correct mode when mode is not a unique integer
     Failure/Error: mode(array_2).should eq [5,6]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fe30a097460>
     # ./mode_spec.rb:21:in `block (2 levels) in <top (required)>'

  5) mode returns the correct mode for strings
     Failure/Error: mode(array_3).should eq ["banana", "cherry"]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fe30a0963d0>
     # ./mode_spec.rb:25:in `block (2 levels) in <top (required)>'

Finished in 0.00218 seconds
5 examples, 5 failures

Failed examples:

rspec ./mode_spec.rb:8 # mode is defined
rspec ./mode_spec.rb:12 # mode requires a single argument
rspec ./mode_spec.rb:16 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:20 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:24 # mode returns the correct mode for strings
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
-bash: syntax error near unexpected token `('
MG:hard_find_mode michaelginalick$   mode_return.select { |k,v| v == mode_return.values.max }.keys
-bash: mode_return.select: command not found
-bash: k,v: command not found
-bash: v: command not found
MG:hard_find_mode michaelginalick$ ls
hard_find_mode	mode_spec.rb	my_solution.rb	readme.md
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
..FFF

Failures:

  1) mode returns the correct mode when mode is a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:29:in `block (2 levels) in <top (required)>'

  2) mode returns the correct mode when mode is not a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:33:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode for strings
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:37:in `block (2 levels) in <top (required)>'

Finished in 0.00187 seconds
5 examples, 3 failures

Failed examples:

rspec ./mode_spec.rb:28 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:32 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:36 # mode returns the correct mode for strings
MG:hard_find_mode michaelginalick$ :wq
-bash: :wq: command not found
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
..FFF

Failures:

  1) mode returns the correct mode when mode is a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:30:in `block (2 levels) in <top (required)>'

  2) mode returns the correct mode when mode is not a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:34:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode for strings
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:38:in `block (2 levels) in <top (required)>'

Finished in 0.00154 seconds
5 examples, 3 failures

Failed examples:

rspec ./mode_spec.rb:29 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:33 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:37 # mode returns the correct mode for strings
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
..FFF

Failures:

  1) mode returns the correct mode when mode is a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:31:in `block (2 levels) in <top (required)>'

  2) mode returns the correct mode when mode is not a unique integer
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:35:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode for strings
     Failure/Error: def mode(array)
     ArgumentError:
       wrong number of arguments (0 for 1)
     # ./mode_spec.rb:6:in `mode'
     # ./mode_spec.rb:7:in `mode'
     # ./mode_spec.rb:39:in `block (2 levels) in <top (required)>'

Finished in 0.00163 seconds
5 examples, 3 failures

Failed examples:

rspec ./mode_spec.rb:30 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:34 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:38 # mode returns the correct mode for strings
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
..FFF

Failures:

  1) mode returns the correct mode when mode is a unique integer
     Failure/Error: ary.each {|value| seen[value] += 1}
     NameError:
       undefined local variable or method `ary' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fc44ba473a8>
     # ./mode_spec.rb:8:in `mode'
     # ./mode_spec.rb:31:in `block (2 levels) in <top (required)>'

  2) mode returns the correct mode when mode is not a unique integer
     Failure/Error: ary.each {|value| seen[value] += 1}
     NameError:
       undefined local variable or method `ary' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fc44ba461b0>
     # ./mode_spec.rb:8:in `mode'
     # ./mode_spec.rb:35:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode for strings
     Failure/Error: ary.each {|value| seen[value] += 1}
     NameError:
       undefined local variable or method `ary' for #<RSpec::Core::ExampleGroup::Nested_1:0x007fc44ba44fe0>
     # ./mode_spec.rb:8:in `mode'
     # ./mode_spec.rb:39:in `block (2 levels) in <top (required)>'

Finished in 0.00175 seconds
5 examples, 3 failures

Failed examples:

rspec ./mode_spec.rb:30 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:34 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:38 # mode returns the correct mode for strings
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
/Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load': /Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/hard_find_mode/mode_spec.rb:41: syntax error, unexpected end-of-input, expecting keyword_end (SyntaxError)
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `each'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:80:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:17:in `block in autorun'
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
/Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load': /Users/michaelginalick/phase_0_unit_2/week_4/1_mathy_ruby_intro/hard_find_mode/mode_spec.rb:41: syntax error, unexpected end-of-input, expecting keyword_end (SyntaxError)
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `each'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/command_line.rb:22:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:80:in `run'
	from /Users/michaelginalick/.rvm/gems/ruby-2.0.0-p247/gems/rspec-core-2.14.8/lib/rspec/core/runner.rb:17:in `block in autorun'
MG:hard_find_mode michaelginalick$ vi mode_spec.rb
MG:hard_find_mode michaelginalick$ rspec mode_spec.rb
...F.

Failures:

  1) mode returns the correct mode when mode is not a unique integer
     Failure/Error: mode(array_2).should eq [5,6]
       
       expected: [5, 6]
            got: [6, 5]
       
       (compared using ==)
     # ./mode_spec.rb:37:in `block (2 levels) in <top (required)>'

Finished in 0.00153 seconds
5 examples, 1 failure

Failed examples:

rspec ./mode_spec.rb:36 # mode returns the correct mode when mode is not a unique integer
MG:hard_find_mode michaelginalick$ vi mode_spec.rb

 require_relative "my_solution"

def mode(array)
  seen = Hash.new(0)
  max = 0
  max_elems = []
  array.each do |value|
    seen[value] += 1
    if seen[value] > max
      max = seen[value]
      max_elems = [value]
    elsif seen[value] == max
      max_elems << value
    end
    end
     max_elems
  end

describe 'mode' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7, 5] }
  let(:array_3) { ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]}

  it "is defined" do
    defined?(mode).should eq 'method'
  end

  it "requires a single argument" do
    method(:mode).arity.should eq 1
  end

  it "returns the correct mode when mode is a unique integer" do
    mode(array_1).should eq [5]
  end

  it "returns the correct mode when mode is not a unique integer" do
    mode(array_2).should eq [5,6]
  end

  it "returns the correct mode for strings" do
    mode(array_3).should eq ["banana", "cherry"]
  end
end
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
~                                                                            
"mode_spec.rb" 43L, 984C



# 4. Reflection 
