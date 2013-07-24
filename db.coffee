exports.list = (req, res, Model, callback)->
	Model.find {}, (err, documents)->
		callback res, err, documents

exports.add = (req, res, Model, callback)->
	document = new Model req.body
	document.save (err, document)->
		callback res, err, document

exports.find = (conditions, res, Model, callback)->
	Model.findOne conditions, (err, document)->
		callback res, err, document
 
exports.update = (conditions, req, res, Model, callback)->
	Model.findOneAndUpdate conditions, { $set: req.body }, (err, document)->
		callback res, err, document

exports.delete = (conditions, res, Model, callback)->
	Model.findOneAndRemove conditions, (err, document)->
		callback res, err, document
