---
layout: post
title: "Url shortner custom plugin for oh-my-zsh"
date: 2012-04-27 06:29
comments: true
categories: [shell,  zsh]
tags:
 - shell
 - zsh
 - ohmyzsh
 - plugin
 - url_shortner
---

I was looking to have a command line for shortning urls, particularly to tag along with my
favourite twitter client [earthquake](https://github.com/jugyo/earthquake). There are
bunch of services and i saw
[one](http://www.commandlinefu.com/commands/view/6709/google-url-shortener) that uses
google url shortner. However,  it didn't work as google api requires an API key. So,
after getting an [API
key](https://developers.google.com/url-shortener/v1/getting_started), 
here is the command line ...
{% include_code 'url shortner' lang:bash shorty.zsh %}
Now save this in a .bashrc/.zshrc or source it from a separate file to invoke it as a
command. 
```bash
source shorty.zsh
shorty your_url
```

And if you are running [Ohmyzsh]() framework, then just make it available as a custom
plugin.
```bash
cd ~/.oh-my-zsh/custom
mkdir -p plugins/shorty && cd plugins/shorty
cat shorty.zsh > shorty.plugin.zsh
```

Now activate the plugin in in your ~/.zshrc
```bash activate plugin
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm cpanm shorty)

$_> source ~/.zshrc
$_> shorty 'url'
```



