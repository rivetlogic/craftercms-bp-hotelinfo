import org.craftercms.engine.service.context.SiteContext

def query = searchService.createQuery();
query.addParam("sort","blastModifiedDate_dt desc")
query.setQuery( "objectId:${params.id}")
query.setRows(1)

def solrResults = searchService.search(query)
if (solrResults.response.documents.size > 0) {
    def solrResult = solrResults.response.documents[0]
    println solrResult["amenitites.item.text"]
    println solrResult["photos.item.photo"]

    templateModel.found = true
    templateModel.name = solrResult["name"]
    templateModel.sizeLabel = solrResult["sizeLabel"]
    templateModel.size = solrResult["size"]
    templateModel.priceLabel = solrResult["priceLabel"]
    templateModel.price = solrResult["price"]
    templateModel.shortDesciption = solrResult["shortDesciption"]
    templateModel.longDescription = solrResult["longDescription"]
    templateModel.amenititesLabel = solrResult["amenititesLabel"]
    templateModel.includedLabel = solrResult["includedLabel"]
    templateModel.photos = solrResult["photos.item.photo"]
    templateModel.amenitites = solrResult["amenitites.item.text"]
    templateModel.include = solrResult["include.item.item"]
}