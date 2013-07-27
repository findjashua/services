exports.list = (req, res, Model, callback)->
	Model.find {}, (err, documents)->
		callback res, err, documents

exports.add = (req, res, Model, callback)->
	document = new Model req.body
	document.save (err, document)->
		callback res, err, document

exports.find = (req, res, Model, conditions, callback)->
	Model.findOne conditions, (err, document)->
		callback res, err, document
 
exports.update = (req, res, Model, conditions, callback)->
	Model.findOneAndUpdate conditions, { $set: req.body }, (err, document)->
		callback res, err, document

exports.delete = (req, res, Model, conditions, callback)->
	Model.findOneAndRemove conditions, (err, document)->
		callback res, err, document
