.class public Lcom/facebook/share/internal/LikeContent$Builder;
.super Ljava/lang/Object;
.source "LikeContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private objectId:Ljava/lang/String;

.field private objectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/internal/LikeContent;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$Builder;Lcom/facebook/share/internal/LikeContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent$Builder;
    .registers 3

    .prologue
    .line 132
    const-class v0, Lcom/facebook/share/internal/LikeContent;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/LikeContent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeContent$Builder;->readFrom(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/share/internal/LikeContent$Builder;
    .registers 4

    .prologue
    .line 122
    if-nez p1, :cond_3

    .line 127
    :goto_2
    return-object p0

    .line 126
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->getObjectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeContent$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 92
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeContent$Builder;->readFrom(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectId:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectType:Ljava/lang/String;

    .line 112
    return-object p0
.end method
