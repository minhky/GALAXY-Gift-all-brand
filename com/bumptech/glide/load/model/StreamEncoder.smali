.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->a()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/util/ByteArrayPool;->b()[B

    move-result-object v2

    .line 23
    :goto_9
    :try_start_9
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_31

    .line 24
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_3a

    goto :goto_9

    .line 27
    :catch_15
    move-exception v1

    .line 28
    :try_start_16
    const-string/jumbo v3, "StreamEncoder"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 29
    const-string/jumbo v3, "StreamEncoder"

    const-string/jumbo v4, "Failed to encode data onto the OutputStream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_3a

    .line 33
    :cond_29
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->a()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    :goto_30
    return v0

    .line 26
    :cond_31
    const/4 v0, 0x1

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->a()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    goto :goto_30

    :catchall_3a
    move-exception v0

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->a()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4

    .prologue
    .line 15
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/StreamEncoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
