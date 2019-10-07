import org.craftercms.engine.service.context.SiteContext
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

def query = "objectId:\"${params.id}\""

UrlTransformationService urlTransformationService

def builder = new SearchSourceBuilder()
    .query(QueryBuilders.queryStringQuery(query))
    .from(0)
    .size(1)
    .sort(new FieldSortBuilder("lastModifiedDate_dt").order(SortOrder.DESC))

def searchResult = elasticsearch.search(new SearchRequest().source(builder))

if (searchResult.hits.hits) {
    def result = searchResult.hits.hits[0].getSourceAsMap()

    templateModel.found = true
    templateModel.name = result["name_t"]
    templateModel.sizeLabel = result["sizeLabel"]
    templateModel.size = result["size"]
    templateModel.priceLabel_t = result["priceLabel_t"]
    templateModel.price = result["price"]
    templateModel.shortDesciption = result["shortDescription_t"]
    templateModel.longDescription_t = result["longDescription_t"]
    templateModel.amenititesLabel = result["amenititesLabel"]
    templateModel.includedLabel = result["includedLabel"]
    def photos = result["photos.item.photo"]
    
    if (photos instanceof String) {
        def photosArr = []
        photosArr.add(photos)
        templateModel.photos = photosArr
    } else {
        templateModel.photos = photos
    }

    def amenitites = result["amenitites.item.text"]
    if (amenitites instanceof String) {
        def amenititesArr = []
        amenititesArr.add(amenitites)
        templateModel.amenitites = amenititesArr
    } else {
        templateModel.amenitites = amenitites
    }


    def include = result["include.item.item"]
    if (include instanceof String) {
        def includes = []
        includes.add(include)
        templateModel.include = includes
    } else {
        templateModel.include = include
    }
} 