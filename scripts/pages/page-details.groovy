import org.craftercms.engine.service.context.SiteContext

def query = searchService.createQuery();
query.addParam("sort","blastModifiedDate_dt desc")
query.setQuery( "objectId:${params.id}")
query.setRows(1)

def solrResults = searchService.search(query)
if (solrResults.response.documents.size > 0) {
    def solrResult = solrResults.response.documents[0]

    templateModel.found = true
    templateModel.name_t = solrResult["name_t"]
    templateModel.sizeLabel = solrResult["sizeLabel"]
    templateModel.size = solrResult["size"]
    templateModel.priceLabel = solrResult["priceLabel"]
    templateModel.price = solrResult["price"]
    templateModel.shortDesciption = solrResult["shortDesciption"]
    templateModel.longDescription = solrResult["longDescription"]
    templateModel.amenititesLabel = solrResult["amenititesLabel"]
    templateModel.includedLabel = solrResult["includedLabel"]
    def photos = solrResult["photos.item.photo"]
    if (photos instanceof String) {
        def photosArr = []
        photosArr.add(photos)
        templateModel.photos = photosArr
    } else {
        templateModel.photos = photos
    }


    def amenitites = solrResult["amenitites.item.text"]
    if (amenitites instanceof String) {
        def amenititesArr = []
        amenititesArr.add(amenitites)
        templateModel.amenitites = amenititesArr
    } else {
        templateModel.amenitites = amenitites
    }


    def include = solrResult["include.item.item"]
    if (include instanceof String) {
        def includes = []
        includes.add(include)
        templateModel.include = includes
    } else {
        templateModel.include = include
    }
}