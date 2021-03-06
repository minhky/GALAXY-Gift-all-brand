.class public Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
.super Ljava/lang/Object;
.source "ImageVideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 28
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_30

    .line 39
    :try_start_7
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, v0, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1c

    move-result-object v0

    .line 47
    :goto_d
    if-nez v0, :cond_1b

    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_1b

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 53
    :cond_1b
    return-object v0

    .line 40
    :catch_1c
    move-exception v0

    .line 41
    const-string/jumbo v2, "ImageVideoDecoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 42
    const-string/jumbo v2, "ImageVideoDecoder"

    const-string/jumbo v3, "Failed to load image from stream, trying FileDescriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    move-object v0, v1

    goto :goto_d
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5

    .prologue
    .line 20
    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->a(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
