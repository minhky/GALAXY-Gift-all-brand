.class Lcom/facebook/android/Utility$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
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
    .line 66
    const-wide/16 v3, 0x0

    .line 67
    .local v3, "totalBytesSkipped":J
    :goto_2
    cmp-long v5, v3, p1

    if-ltz v5, :cond_7

    .line 79
    :cond_6
    return-wide v3

    .line 68
    :cond_7
    iget-object v5, p0, Lcom/facebook/android/Utility$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 69
    .local v1, "bytesSkipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1d

    .line 70
    invoke-virtual {p0}, Lcom/facebook/android/Utility$FlushedInputStream;->read()I

    move-result v0

    .line 71
    .local v0, "b":I
    if-ltz v0, :cond_6

    .line 74
    const-wide/16 v1, 0x1

    .line 77
    .end local v0    # "b":I
    :cond_1d
    add-long/2addr v3, v1

    goto :goto_2
.end method