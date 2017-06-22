#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class CoverPage
  
  include Page

  def initialize loc_title
    
    @type = "cover"
    @title = loc_title
    @is_increment = true

    @style = {}
    @style[""] = "background:white; overflow:hidden"
    @style["img"] = "width:100%"
    @style["h1"] = "position:absolute; bottom:100px; color:black; text-transform:uppercase; width:100%; text-align:center; font-weight:normal; font-size:36px"
    @style["h1 trema:before"] = "top:-15px"
    @style["img.logo"] = "position: absolute;bottom: 0px;width: 70px;height: 70px;display: block;left:calc(50% - 35px);"
    @style["grave"] = "background-position: center -1px;line-height: 50px;display: inline-block"
    @style[".umlaut:before"] = "width: 18px; margin-left: -10px; top: -9px;"

  end

  def content

    return "<img src='assets/cover.svg'/><h1>#{@title}</h1><img class='logo' src='assets/hundred.rabbits.logo.svg'/>"
    
  end
  
end