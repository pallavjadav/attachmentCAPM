const cds = require('@sap/cds')

module.exports = cds.service.impl(function () {

    this.before('CREATE', 'userDocument', req => {
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.url = `/catalog/userDocument(${req.data.ID})/content`
    })
})