.class public final Lorg/parceler/NonParcelRepository$MapParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$MapParcelable$MapParcelableCreator;

.field private static final a:Lorg/parceler/converter/HashMapParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 351
    new-instance v0, Lorg/parceler/NonParcelRepository$MapParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$MapParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$MapParcelable;->a:Lorg/parceler/converter/HashMapParcelConverter;

    .line 383
    new-instance v0, Lorg/parceler/NonParcelRepository$MapParcelable$MapParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$MapParcelable$MapParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$MapParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$MapParcelable$MapParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 375
    sget-object v0, Lorg/parceler/NonParcelRepository$MapParcelable;->a:Lorg/parceler/converter/HashMapParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 376
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 379
    sget-object v0, Lorg/parceler/NonParcelRepository$MapParcelable;->a:Lorg/parceler/converter/HashMapParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 380
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 349
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
