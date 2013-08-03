exports.list = (Model, callback)->
	Model.find {}, (err, data)->
		callback err, data

exports.add = (Model, document, callback)->
	document.save (err, data)->
		callback err, data

exports.find = (Model, conditions, callback)->
	Model.findOne conditions, (err, data)->
		callback err, data
 
exports.update = (Model, conditions, updateObject, callback)->
	Model.findOneAndUpdate conditions, { $set: updateObject }, (err, data)->
		callback err, data

exports.delete = (Model, conditions, callback)->
	Model.findOneAndRemove conditions, (err, data)->
		callback err, data
