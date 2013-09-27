mongoose = require 'mongoose'

respond = (err, data, res)->
	return console.log err if err?
	return res.send data if data?

exports.list = (req, res, Model)->
	Model.find {}, (err, data)->
		res.send data if data?

exports.find = (req, res, Model)->
	Model.findOne req.params, (err, data)->
		respond err, data, res

exports.add = (req, res, Model)->
	model = new Model req.body
	model.save (err, data)->
		respond err, data, res
 
exports.update = (req, res, Model)->
	Model.findOneAndUpdate req.params, { $set: req.body }, (err, data)->
		respond err, data, res

exports.delete = (req, res, Model)->
	Model.findOneAndRemove req.params, (err, data)->
		respond err, data, res
