.class public Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 17
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method

.method public getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 6
    .param p1, "model"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/bumptech/glide/load/data/ByteArrayFetcher;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/data/ByteArrayFetcher;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
