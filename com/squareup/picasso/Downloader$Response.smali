.class public Lcom/squareup/picasso/Downloader$Response;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .registers 8

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_e

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_e
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->a:Ljava/io/InputStream;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->b:Landroid/graphics/Bitmap;

    .line 121
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$Response;->c:Z

    .line 122
    iput-wide p3, p0, Lcom/squareup/picasso/Downloader$Response;->d:J

    .line 123
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()J
    .registers 3

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/squareup/picasso/Downloader$Response;->d:J

    return-wide v0
.end method
