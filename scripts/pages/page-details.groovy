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
    templateModel.name_t = result["name_t"]
    templateModel.sizeLabel_t = result["sizeLabel_t"]
    templateModel.size = result["size"]
    templateModel.priceLabel_t = result["priceLabel_t"]
    templateModel.price_t = result["price_t"]
    templateModel.shortDesciption_t = result["shortDescription_t"]
    templateModel.longDescription_t = result["longDescription_t"]
    templateModel.amenititesLabel = result["amenititesLabel"]
    templateModel.includedLabel_t = result["includedLabel_t"]
    def photos_o = result["photos_o.item.photo_s"]
    
    if (photos_o instanceof String) {
        def photosArr = []
        photosArr.add(photos_o)
        templateModel.photos_o = photosArr
    } else {
        templateModel.photos_o = photos_o
    }

    def amenitites = result["amenitites.item.text"]
    if (amenitites instanceof String) {
        def amenititesArr = []
        amenititesArr.add(amenitites)
        templateModel.amenitites = amenititesArr
    } else {
        templateModel.amenitites = amenitites
    }


    def include_o = result["include_o.item.item_t"]
    if (include_o instanceof String) {
        def includes = []
        includes.add(include_o)
        templateModel.include_o = includes
    } else {
        templateModel.include_o = include_o
    }
} 