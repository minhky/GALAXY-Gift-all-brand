.class Lcom/bumptech/glide/load/model/ModelCache$1;
.super Lcom/bumptech/glide/util/LruCache;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache",
        "<",
        "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/model/ModelCache;I)V
    .registers 3

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$1;->a:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->a()V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 26
    check-cast p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$1;->a(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V

    return-void
.end method
