.class final Lokhttp3/RequestBody$2;
.super Lokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->a(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/MediaType;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lokhttp3/MediaType;I[BI)V
    .registers 5

    .prologue
    .line 86
    iput-object p1, p0, Lokhttp3/RequestBody$2;->a:Lokhttp3/MediaType;

    iput p2, p0, Lokhttp3/RequestBody$2;->b:I

    iput-object p3, p0, Lokhttp3/RequestBody$2;->c:[B

    iput p4, p0, Lokhttp3/RequestBody$2;->d:I

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lokhttp3/RequestBody$2;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lokhttp3/RequestBody$2;->c:[B

    iget v1, p0, Lokhttp3/RequestBody$2;->d:I

    iget v2, p0, Lokhttp3/RequestBody$2;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->c([BII)Lokio/BufferedSink;

    .line 97
    return-void
.end method

.method public b()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/RequestBody$2;->a:Lokhttp3/MediaType;

    return-object v0
.end method
