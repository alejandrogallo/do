#!/usr/bin/env ruby

require './parsers.rb'



py = Parsers::Python.new("print 2**3")
py.run

