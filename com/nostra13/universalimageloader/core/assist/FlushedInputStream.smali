.class public Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;
.super Ljava/io/BufferedInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .local v3, "totalBytesSkipped":J
    :goto_2
    cmp-long v5, v3, p1

    if-ltz v5, :cond_7

    .line 36
    :cond_6
    return-wide v3

    .line 25
    :cond_7
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 26
    .local v1, "bytesSkipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1d

    .line 27
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->read()I

    move-result v0

    .line 28
    .local v0, "by_te":I
    if-ltz v0, :cond_6

    .line 31
    const-wide/16 v1, 0x1

    .line 34
    .end local v0    # "by_te":I
    :cond_1d
    add-long/2addr v3, v1

    goto :goto_2
.end method
