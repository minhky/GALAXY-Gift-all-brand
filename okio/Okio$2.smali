.class final Lokio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->a(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
.end annotation


# instance fields
.field final synthetic a:Lokio/Timeout;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lokio/Timeout;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lokio/Okio$2;->a:Lokio/Timeout;

    iput-object p2, p0, Lokio/Okio$2;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 134
    cmp-long v2, p2, v0

    if-gez v2, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_20
    cmp-long v2, p2, v0

    if-nez v2, :cond_25

    .line 144
    :goto_24
    return-wide v0

    .line 137
    :cond_25
    :try_start_25
    iget-object v0, p0, Lokio/Okio$2;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->g()V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v0

    .line 139
    iget v1, v0, Lokio/Segment;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 140
    iget-object v2, p0, Lokio/Okio$2;->b:Ljava/io/InputStream;

    iget-object v3, v0, Lokio/Segment;->a:[B

    iget v4, v0, Lokio/Segment;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 141
    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    const-wide/16 v0, -0x1

    goto :goto_24

    .line 142
    :cond_49
    iget v2, v0, Lokio/Segment;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->c:I

    .line 143
    iget-wide v2, p1, Lokio/Buffer;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lokio/Buffer;->b:J
    :try_end_54
    .catch Ljava/lang/AssertionError; {:try_start_25 .. :try_end_54} :catch_56

    .line 144
    int-to-long v0, v1

    goto :goto_24

    .line 145
    :catch_56
    move-exception v0

    .line 146
    invoke-static {v0}, Lokio/Okio;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_63

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :cond_63
    throw v0
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lokio/Okio$2;->a:Lokio/Timeout;

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lokio/Okio$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/Okio$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
