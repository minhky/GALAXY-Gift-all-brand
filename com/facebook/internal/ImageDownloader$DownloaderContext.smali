.class Lcom/facebook/internal/ImageDownloader$DownloaderContext;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# instance fields
.field isCancelled:Z

.field request:Lcom/facebook/internal/ImageRequest;

.field workItem:Lcom/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ImageDownloader$1;)V
    .registers 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>()V

    return-void
.end method
