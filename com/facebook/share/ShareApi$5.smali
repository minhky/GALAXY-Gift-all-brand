.class Lcom/facebook/share/ShareApi$5;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$stagedObject:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .registers 4

    .prologue
    .line 426
    iput-object p1, p0, Lcom/facebook/share/ShareApi$5;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 426
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$5;->get(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 430
    new-instance v1, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 431
    new-instance v2, Lcom/facebook/share/ShareApi$5$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/facebook/share/ShareApi$5$1;-><init>(Lcom/facebook/share/ShareApi$5;Lcom/facebook/internal/Mutable;I)V

    return-object v2
.end method

.method public set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 6

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 466
    :goto_9
    return-void

    .line 459
    :catch_a
    move-exception v0

    .line 460
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 461
    if-nez v0, :cond_14

    .line 462
    const-string/jumbo v0, "Error staging object."

    .line 464
    :cond_14
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_9
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 4

    .prologue
    .line 426
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$5;->set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method
