.class final Lorg/parceler/NonParcelRepository$TreeMapParcelable$TreeMapParcelableCreator;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$TreeMapParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TreeMapParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/parceler/NonParcelRepository$TreeMapParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/parceler/NonParcelRepository$1;

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$TreeMapParcelable$TreeMapParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$TreeMapParcelable$TreeMapParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$TreeMapParcelable;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$TreeMapParcelable;
    .registers 3
    .param p1, "parcel$$17"    # Landroid/os/Parcel;

    .prologue
    .line 491
    new-instance v0, Lorg/parceler/NonParcelRepository$TreeMapParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$TreeMapParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$TreeMapParcelable$TreeMapParcelableCreator;->newArray(I)[Lorg/parceler/NonParcelRepository$TreeMapParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/parceler/NonParcelRepository$TreeMapParcelable;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 496
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$TreeMapParcelable;

    return-object v0
.end method
