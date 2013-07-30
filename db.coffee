exports.list = (collection, callback)->
	collection.find {}, (err, data)->
		callback err, data

exports.add = (collection, document, callback)->
	document.save (err, data)->
		callback err, data

exports.find = (collection, conditions, callback)->
	collection.findOne conditions, (err, data)->
		callback err, data
 
exports.update = (collection, conditions, updateObject, callback)->
	collection.findOneAndUpdate conditions, { $set: updateObject }, (err, data)->
		callback err, data

exports.delete = (collection, conditions, callback)->
	collection.findOneAndRemove conditions, (err, data)->
		callback err, data
