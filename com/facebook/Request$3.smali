.class Lcom/facebook/Request$3;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/facebook/Request$GraphPlaceListCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphPlaceListCallback;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    const-class v1, Lcom/facebook/model/GraphPlace;

    # invokes: Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    invoke-static {p1, v1}, Lcom/facebook/Request;->access$2(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/Request$GraphPlaceListCallback;->onCompleted(Ljava/util/List;Lcom/facebook/Response;)V

    .line 424
    :cond_f
    return-void
.end method