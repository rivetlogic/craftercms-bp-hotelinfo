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
    templateModel.size_t = result["size_t"]
    templateModel.priceLabel_t = result["priceLabel_t"]
    templateModel.price_t = result["price_t"]
    templateModel.shortDesciption_t = result["shortDescription_t"]
    templateModel.longDescription_t = result["longDescription_t"]
    templateModel.amenititesLabel_t = result["amenititesLabel_t"]
    templateModel.includedLabel_t = result["includedLabel_t"]
    templateModel.photos_o = result["photos_o"] 
    templateModel.amenitites_o = result["amenitites_o"]
    templateModel.include_o = result["include_o"]

    def photos = result["photos_o"]
    def amenitites = result["amenitites_o"]
    def include = result["include_o"]

    if (photos && photos.item instanceof java.util.ArrayList) {
        templateModel.photos_o = photos.item
    } else {
        templateModel.photos_o = photos ? [photos.item].flatten() : null
    }

    if (amenitites && amenitites.item instanceof java.util.ArrayList) {
        templateModel.amenitites_o = amenitites.item
    } else {
        templateModel.amenitites_o = amenitites ? [amenitites.item].flatten() : null
    }

    if (include && include.item instanceof java.util.ArrayList) {
        templateModel.include_o = include.item
    } else {
        templateModel.include_o = include ? [include.item].flatten() : null
    }
} 