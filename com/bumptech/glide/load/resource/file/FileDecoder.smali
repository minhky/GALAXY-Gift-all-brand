.class public Lcom/bumptech/glide/load/resource/file/FileDecoder;
.super Ljava/lang/Object;
.source "FileDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileResource;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/file/FileResource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5

    .prologue
    .line 11
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileDecoder;->a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const-string/jumbo v0, ""

    return-object v0
.end method
