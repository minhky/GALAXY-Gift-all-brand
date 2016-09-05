.class public final Lcom/facebook/share/model/SharePhoto;
.super Lcom/facebook/share/model/ShareMedia;
.source "SharePhoto.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final caption:Ljava/lang/String;

.field private final imageUrl:Landroid/net/Uri;

.field private final userGenerated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/share/model/SharePhoto$1;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Landroid/os/Parcel;)V

    .line 52
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    .line 56
    return-void

    .line 54
    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private constructor <init>(Lcom/facebook/share/model/SharePhoto$Builder;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Lcom/facebook/share/model/ShareMedia$Builder;)V

    .line 44
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$000(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$100(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    .line 46
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$200(Lcom/facebook/share/model/SharePhoto$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    .line 47
    # getter for: Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->access$300(Lcom/facebook/share/model/SharePhoto$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhoto$1;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserGenerated()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->imageUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-boolean v1, p0, Lcom/facebook/share/model/SharePhoto;->userGenerated:Z

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
