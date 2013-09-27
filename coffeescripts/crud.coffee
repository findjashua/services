mongoose = require 'mongoose'

exports.list = (req, res, Model, callback)->
	Model.find {}, (err, data)->
		callback err, data

exports.find = (req, res, Model, callback)->
	Model.findOne req.params, (err, data)->
		callback err, data

exports.add = (req, res, Model, callback)->
	model = new Model req.body
	model.save (err, data)->
		callback err, data
 
exports.update = (req, res, Model, callback)->
	Model.findOneAndUpdate req.params, { $set: req.body }, (err, data)->
		callback err, data

exports.delete = (req, res, Model, callback)->
	Model.findOneAndRemove req.params, (err, data)->
		callback err, data