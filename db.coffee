exports.list = (req, res, Model, callback)->
	Model.find {}, (err, documents)->
		callback res, err, documents

exports.find = (req, res, Model, callback)->
	Model.findById req.params.id, (err, document)->
		callback res, err, document
 
exports.add = (req, res, Model, callback)->
	document = new Model req.body
	document.save (err, document)->
		callback res, err, document

exports.update = (req, res, Model, callback)->
	Model.findByIdAndUpdate req.params.id, { $set: req.body }, (err, document)->
		callback res, err, document

exports.delete = (req, res, Model, callback)->
	Model.findByIdAndRemove req.params.id, (err, document)->
		callback res, err, document
